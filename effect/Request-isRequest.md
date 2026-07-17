Package: `effect`<br />
Module: `Request`<br />

## Request.isRequest

Checks whether a value is a `Request`.

**Example** (Checking request values)

```ts
import { Request } from "effect"

declare const User: unique symbol
declare const UserNotFound: unique symbol
type User = typeof User
type UserNotFound = typeof UserNotFound

interface GetUser extends Request.Request<User, UserNotFound> {
  readonly _tag: "GetUser"
  readonly id: string
}
const GetUser = Request.tagged<GetUser>("GetUser")

const request = GetUser({ id: "123" })
console.log(Request.isRequest(request)) // true
console.log(Request.isRequest("not a request")) // false
```

**Signature**

```ts
declare const isRequest: (u: unknown) => u is Request<unknown, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L251)

Since v2.0.0