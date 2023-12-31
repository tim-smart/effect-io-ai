# TaggedClass

Provides a Tagged constructor for a Request Class.

To import and use `TaggedClass` from the "Request" module:

```ts
import * as Request from "effect/Request"
// Can be accessed like this
Request.TaggedClass
```

**Example**

```ts
import * as Request from "effect/Request"

type Error = never
type Success = string

class MyRequest extends Request.TaggedClass("MyRequest")<
  Error,
  Success,
  {
    readonly name: string
  }
> {}
```

**Signature**

```ts
export declare const TaggedClass: <Tag extends string>(
  tag: Tag
) => new <Error, Success, A extends Record<string, any>>(
  args: Types.Equals<Omit<A, keyof Request<unknown, unknown>>, {}> extends true
    ? void
    : { readonly [P in keyof A as P extends "_tag" | keyof Request<unknown, unknown> ? never : P]: A[P] }
) => Request<Error, Success> & Readonly<A> & { readonly _tag: Tag }
```
