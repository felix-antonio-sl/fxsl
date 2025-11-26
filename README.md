# fxsl

[![KODA Compliant](https://img.shields.io/badge/KODA-Compliant-blue)](https://github.com/koda-framework/koda)

> Personal knowledge base and learnings

## Structure

```
fxsl/
├── knowledge/
│   ├── core/           # Core guides and specifications
│   └── domains/        # Domain-specific knowledge
├── agents/             # Agent definitions
├── schemas/            # JSON schemas
├── catalog/            # Artifact inventory
├── sources/            # Raw source materials
└── staging/            # Work in progress
```

## URN Namespace

All artifacts use the namespace: `fxsl`

Example URN: `urn:knowledge:fxsl:core:example:1.0.0`

## Getting Started

1. Add knowledge artifacts to `knowledge/`
2. Register them in `catalog/catalog_master_fxsl.yml`
3. Add resolution rules to `.knowledge-resolver.yml`

## Federation

This repository is part of the [KODA Federation](https://github.com/koda-framework/koda).

---

*Built with [KODA Framework](https://github.com/koda-framework/koda) — Knowledge-Oriented Design Architecture*
