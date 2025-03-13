Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.EncodeException

Represents a checked exception which occurs when encoding fails.

**Signature**

```ts
export interface EncodeException {
  readonly _tag: "EncodeException"
  readonly [EncodeExceptionTypeId]: EncodeExceptionTypeId
  readonly input: string
  readonly message?: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Encoding.ts#L174)

Since v3.12.0