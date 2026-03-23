Package: `effect`<br />
Module: `Cause`<br />

## Cause.Cause.Error

Extracts the error type `E` from a `Cause<E>`.

**Example** (extracting the error type)

```ts
import type { Cause } from "effect"

// string
type E = Cause.Cause.Error<Cause.Cause<string>>
```

**Signature**

```ts
type Error<T> = T extends Cause<infer E> ? E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L304)

Since v4.0.0