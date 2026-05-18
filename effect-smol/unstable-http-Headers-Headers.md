Package: `effect`<br />
Module: `Headers`<br />

## Headers.Headers

Represents an immutable HTTP header collection keyed by lowercase header name.

`Headers` values also support redaction through the `Redactable` protocol.

**Signature**

```ts
export interface Headers extends Redactable.Redactable {
  readonly [TypeId]: TypeId
  readonly [key: string]: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L67)

Since v4.0.0