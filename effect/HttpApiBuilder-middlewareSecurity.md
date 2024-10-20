# middlewareSecurity

Make a middleware from an `HttpApiSecurity` instance, that can be used when
constructing a `Handlers` group.

To import and use `middlewareSecurity` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middlewareSecurity
```

**Example**

```ts
import { HttpApiBuilder, HttpApiSecurity } from "@effect/platform"
import { Schema } from "@effect/schema"
import { Context, Effect, Redacted } from "effect"

class User extends Schema.Class<User>("User")({
  id: Schema.Number
}) {}

class CurrentUser extends Context.Tag("CurrentUser")<CurrentUser, User>() {}

class Accounts extends Context.Tag("Accounts")<
  Accounts,
  {
    readonly findUserByAccessToken: (accessToken: string) => Effect.Effect<User>
  }
>() {}

const securityMiddleware = Effect.gen(function* () {
  const accounts = yield* Accounts
  return HttpApiBuilder.middlewareSecurity(HttpApiSecurity.bearer, CurrentUser, (token) =>
    accounts.findUserByAccessToken(Redacted.value(token))
  )
})
```

**Signature**

```ts
export declare const middlewareSecurity: <Security extends HttpApiSecurity.HttpApiSecurity, I, S, EM, RM>(
  self: Security,
  tag: Context.Tag<I, S>,
  f: (credentials: HttpApiSecurity.HttpApiSecurity.Type<Security>) => Effect.Effect<S, EM, RM>
) => SecurityMiddleware<I, EM, RM>
```
