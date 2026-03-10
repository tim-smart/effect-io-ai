Package: `effect`<br />
Module: `Schema`<br />

## Schema.Schema

A typed view of a schema that tracks the decoded (output) type `T`.

When to use:
- You want to accept "any schema that decodes to `T`" in a function signature.
- You only care about the decoded type and do not need to talk about the encoded representation.

Behavior:
- This is a structural interface used for typing; it does not by itself construct or run validation.
- If you also need the encoded type (or decoding/encoding services), use `Codec`.

**Signature**

```ts
export interface Schema<out T> extends Top {
  readonly "Type": T
  readonly "~rebuild.out": Schema<T>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L347)

Since v4.0.0