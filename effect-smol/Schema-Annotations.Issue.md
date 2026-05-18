Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Issue

Annotations that can be attached to schema issues.

The optional `message` field overrides the default issue message.

**Signature**

```ts
export interface Issue extends Annotations {
    readonly message?: string | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L12722)

Since v4.0.0