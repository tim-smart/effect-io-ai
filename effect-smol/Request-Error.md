Package: `effect`<br />
Module: `Request`<br />

## Request.Error

A utility type to extract the error type from a `Request`.

**Example**

```ts
import type { Request } from "effect"

interface GetUser extends Request.Request<string, Error> {
  readonly id: number
}

// Extract the error type from a Request using the utility
type UserError = Request.Error<GetUser> // Error
```

**Signature**

```ts
type Error<T> = [T] extends [Request<infer _A, infer _E, infer _R>] ? _E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L112)

Since v2.0.0