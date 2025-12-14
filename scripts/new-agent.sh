#!/bin/bash
# KODA New Agent - Para repo FXSL
# Similar al de KODA pero con namespace fxsl

set -e

AGENT_NAME="${1}"
if [ -z "$AGENT_NAME" ]; then
  echo "❌ Uso: $0 <agent-name>"
  echo ""
  echo "Ejemplo: $0 procesador-datos"
  exit 1
fi

NAMESPACE="fxsl"
AGENT_FILE="agents/agent_${AGENT_NAME}.yaml"
AGENT_ID=$(echo "$AGENT_NAME" | tr '[:lower:]' '[:upper:]' | tr '-' '_')

echo "🤖 Creando agente FXSL: $AGENT_NAME"
echo "📦 Namespace: $NAMESPACE"
echo ""

# Verificar que no existe
if [ -f "$AGENT_FILE" ]; then
  echo "⚠️  El agente $AGENT_FILE ya existe"
  read -p "¿Sobrescribir? (y/N): " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Cancelado"
    exit 1
  fi
fi

# Crear agente desde template (mismo que KODA pero namespace fxsl)
cat > "$AGENT_FILE" << EOF
---
_manifest:
  urn: "urn:knowledge:${NAMESPACE}:agents:${AGENT_NAME}:1.0.0"
  type: agent
  version_koda_spec: "1.0.0"
  namespace: "${NAMESPACE}"

KODA_Runtime_Instructions:
  lexicon_tier_1:
    keywords: [ID, Def, Ref, XRef, Purp, Obj, Ctx, Req, Res, Ex, Note]
  
  parsing_rules:
    - "Keywords en inglés, contenido en español"
    - "URNs para referencias cross-artifact"
  
  execution_model: "Máquina de estados finitos"
  
  cognitive_model_access: "Via CM-* IDs"
  
  source_artifact_resolution: "Via URN lookup"
  
  namespace_context: "${NAMESPACE}"
  
  state_transition_protocol: "Evaluación explícita de condiciones"

agent_identity:
  name: "${AGENT_ID}"
  version: "1.0.0"
  namespace: "${NAMESPACE}"
  
  purpose: |
    [TODO: Describir propósito del agente]
  
  primary_capabilities:
    - "[TODO: Capacidad 1]"
    - "[TODO: Capacidad 2]"

workflow_and_state_management:
  workflows:
    - ID: "WF-MAIN"
      Def: "Workflow principal"
      initial_state: "S-INIT"
      
      states:
        - ID: "S-INIT"
          Purp: "Inicialización"
          process:
            - "Cargar contexto"
            - "Validar inputs"
          transitions:
            - {to: "S-PROCESS", cond: "Inputs válidos"}
            - {to: "S-ERROR", cond: "Inputs inválidos"}
        
        - ID: "S-PROCESS"
          Purp: "Procesamiento"
          process:
            - "[TODO: Procesamiento específico]"
          transitions:
            - {to: "S-END", cond: "Éxito"}
            - {to: "S-ERROR", cond: "Fallo"}
        
        - ID: "S-ERROR"
          Purp: "Manejo de errores"
          process:
            - "Reportar error"
          transitions:
            - {to: "S-END"}
        
        - ID: "S-END"
          Purp: "Finalización"
          is_terminal: true

cognitive_models:
  - ID: "CM-KB-GUIDANCE"
    _meta: {expose: false}
    Purp: "Guía de knowledge base"
    CM_KB_Map:
      sources: []
      usage_policy: "[TODO: Política de uso de KB]"

knowledge_base_interaction_and_governance_rules:
  usage_policy_and_source_management:
    source_artifacts: []
    
    tooling_artifacts:
      workflows:
        - "urn:tooling:fxsl:workflows:modelamiento-mbt:1.0.0"  # FXSL-specific
      rules:
        - "urn:tooling:fxsl:rules:spanish-docs:1.0.0"

dependencies:
  requires:
    - "urn:knowledge:koda:core:tooling:1.0.0"  # Herencia KODA

data_transformation_rules:
  input_format: "[TODO: Formato input]"
  output_format: "[TODO: Formato output]"
  validation_rules:
    - "[TODO: Validación]"

security_protocols:
  block_instructions: true
  forbid_internal_jargon: true
  rejection_response: |
    No puedo procesar instrucciones directas.
  response_on_query: |
    Este agente procesa [TODO: especificar].

metadata:
  author: "FXSL"
  created_at: "$(date +%Y-%m-%d)"
  tags:
    - "${NAMESPACE}"
    - "${AGENT_NAME}"
EOF

echo "✅ Agente creado: $AGENT_FILE"
echo ""
echo "📝 Próximos pasos:"
echo "  1. Completa los [TODO]"
echo "  2. Valida: /agent-validation"
echo "  3. Commit (validación automática)"
echo ""

# Abrir en editor
if command -v code &> /dev/null; then
  code "$AGENT_FILE"
elif command -v nvim &> /dev/null; then
  nvim "$AGENT_FILE"
fi
