Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Augment

Annotations shared by all schema nodes. These map to common JSON Schema /
OpenAPI fields: `title`, `description`, `format`, etc.

**Signature**

```ts
export interface Augment extends Annotations {
    readonly expected?: string | undefined
    readonly title?: string | undefined
    readonly description?: string | undefined
    readonly documentation?: string | undefined
    readonly readOnly?: boolean | undefined
    readonly writeOnly?: boolean | undefined
    readonly format?: string | undefined
    readonly contentEncoding?: string | undefined
    readonly contentMediaType?: string | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11212)

Since v4.0.0