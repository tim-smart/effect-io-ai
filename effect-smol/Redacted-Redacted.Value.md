Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.Redacted.Value

Extracts the underlying value type from a `Redacted` type.

**When to use**

Use to infer the sensitive value type from an existing `Redacted` type.

**Example** (Extracting the redacted value type)

```ts
import { Redacted } from "effect"

type ApiKey = Redacted.Redacted<{ readonly token: string }>
type ApiKeyValue = Redacted.Redacted.Value<ApiKey>

const rotate = (value: ApiKeyValue): ApiKeyValue => ({
  token: `${value.token}:rotated`
})

console.log(rotate({ token: "secret" })) // { token: "secret:rotated" }
```

**Signature**

```ts
type Value<T> = [T] extends [Redacted<infer _A>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L161)

Since v3.3.0