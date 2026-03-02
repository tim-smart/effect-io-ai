Package: `effect`<br />
Module: `Request`<br />

## Request.Success

A utility type to extract the value type from a `Request`.

**Example**

```ts
import type { Request } from "effect"

interface GetUser extends Request.Request<string, Error> {
  readonly _tag: "GetUser"
  readonly id: number
}

// Extract the success type from a Request using the utility
type UserSuccess = Request.Success<GetUser> // string
```

**Signature**

```ts
type Success<T> = [T] extends [Request<infer _A, infer _E, infer _R>] ? _A
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L133)

Since v2.0.0