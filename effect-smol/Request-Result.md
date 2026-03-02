Package: `effect`<br />
Module: `Request`<br />

## Request.Result

A utility type to extract the result type from a `Request`.

**Example**

```ts
import type { Request } from "effect"

interface GetUser extends Request.Request<string, Error> {
  readonly _tag: "GetUser"
  readonly id: number
}

// Extract the result type from a Request using the utility
type UserResult = Request.Result<GetUser> // Exit.Exit<string, Error>
```

**Signature**

```ts
type Result<T> = T extends Request<infer A, infer E, infer _R> ? Exit.Exit<A, E>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L164)

Since v2.0.0