Package: `effect`<br />
Module: `Request`<br />

## Request.Request

A `Request<A, E, R>` is a request from a data source for a value of type `A`
that may fail with an `E` and have requirements of type `R`.

**Example**

```ts
import type { Request } from "effect"

// Define a request that fetches a user by ID
interface GetUser extends Request.Request<string, Error> {
  readonly _tag: "GetUser"
  readonly id: number
}

// Define a request that fetches all users
interface GetAllUsers extends Request.Request<ReadonlyArray<string>, Error> {
  readonly _tag: "GetAllUsers"
}
```

**Signature**

```ts
export interface Request<out A, out E = never, out R = never> extends Variance<A, E, R> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L52)

Since v2.0.0