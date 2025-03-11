## DecodeException

Represents a checked exception which occurs when decoding fails.

**Signature**

```ts
export interface DecodeException {
  readonly _tag: "DecodeException"
  readonly [DecodeExceptionTypeId]: DecodeExceptionTypeId
  readonly input: string
  readonly message?: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Encoding.ts#L133)

Since v2.0.0