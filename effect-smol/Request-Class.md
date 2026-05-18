Package: `effect`<br />
Module: `Request`<br />

## Request.Class

Base class constructor for defining request types with TypeScript classes.

**Details**

Subclasses pass their data fields to `super`, and instances are marked as
`Request` values while retaining the provided readonly fields.

**Example** (Defining request classes)

```ts
import { Request } from "effect"

class GetUser extends Request.Class<{ id: number }, string, Error> {
  constructor(readonly id: number) {
    super({ id })
  }
}

const getUserRequest = new GetUser(123)
console.log(getUserRequest.id) // 123
```

**Signature**

```ts
declare const Class: new <A extends Record<string, any>, Success, Error = never, Context = never>(args: Types.Equals<Omit<A, keyof Request<unknown, unknown>>, {}> extends true ? void : { readonly [P in keyof A as P extends keyof Request<any, any, any> ? never : P]: A[P]; }) => Request<Success, Error, Context> & Readonly<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L355)

Since v2.0.0