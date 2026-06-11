Package: `effect`<br />
Module: `Request`<br />

## Request.Constructor

The constructor type returned by `Request.of` and `Request.tagged`.

**Details**

The constructor accepts the request's data fields, excluding request variance
fields and any fields already supplied by the constructor such as `_tag`, and
returns a value of the request type.

**Example** (Using generated request constructors)

```ts
import { Request } from "effect"

interface GetUser extends Request.Request<string, Error> {
  readonly _tag: "GetUser"
  readonly id: number
}

// Constructor type is used internally by Request.of() and Request.tagged()
const GetUser = Request.tagged<GetUser>("GetUser")
const userRequest = GetUser({ id: 123 })
```

**Signature**

```ts
export interface Constructor<R extends Request<any, any, any>, T extends keyof R = never> {
  (args: Types.VoidIfEmpty<Types.Simplify<Omit<R, T | keyof (Variance<any, any, any>)>>>): R
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L117)

Since v2.0.0