Package: `effect`<br />
Module: `Cause`<br />

## Cause.Reason.Error

Extracts the error type `E` from a `Reason<E>`.

**Example** (extracting the error type)

```ts
import type { Cause } from "effect"

// string
type E = Cause.Reason.Error<Cause.Reason<string>>
```

**Signature**

```ts
type Error<T> = T extends Reason<infer E> ? E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L350)

Since v4.0.0