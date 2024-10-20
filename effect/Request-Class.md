# Class

Provides a constructor for a Request Class.

To import and use `Class` from the "Request" module:

```ts
import * as Request from "effect/Request"
// Can be accessed like this
Request.Class
```

**Example**

```ts
import { Request } from "effect"

type Success = string
type Error = never

class MyRequest extends Request.Class<
  Success,
  Error,
  {
    readonly id: string
  }
> {}
```

**Signature**

```ts
export declare const Class: new <Success, Error, A extends Record<string, any>>(
  args: Types.Equals<Omit<A, keyof Request<unknown, unknown>>, {}> extends true
    ? void
    : { readonly [P in keyof A as P extends keyof Request<unknown, unknown> ? never : P]: A[P] }
) => Request<Success, Error> & Readonly<A>
```
