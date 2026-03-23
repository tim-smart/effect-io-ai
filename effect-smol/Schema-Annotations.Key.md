Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Key

Annotations for struct property schemas. Extends `Documentation`
with an optional `messageMissingKey` to override the error message when
the property key is absent during decoding.

**Signature**

```ts
export interface Key<T> extends Documentation<T> {
    /**
     * The message to use when a key is missing.
     */
    readonly messageMissingKey?: string | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11242)

Since v4.0.0