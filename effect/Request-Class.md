Package: `effect`<br />
Module: `Request`<br />

## Request.Class

Provides a constructor for a Request Class.

**Example**

```ts
import { Request } from "effect"

type Success = string
type Error = never

class MyRequest extends Request.Class<Success, Error, {
  readonly id: string
}> {}
```

**Signature**

```ts
declare const Class: new <Success, Error, A extends Record<string, any>>(args: Types.Equals<Omit<A, keyof Request<unknown, unknown>>, {}> extends true ? void : { readonly [P in keyof A as P extends keyof Request<unknown, unknown> ? never : P]: A[P]; }) => Request<Success, Error> & Readonly<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L142)

Since v2.0.0