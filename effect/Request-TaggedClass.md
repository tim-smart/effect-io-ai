## TaggedClass

Provides a Tagged constructor for a Request Class.

**Example**

```ts
import { Request } from "effect"

type Success = string
type Error = never

class MyRequest extends Request.TaggedClass("MyRequest")<Success, Error, {
  readonly name: string
}> {}
```

**Signature**

```ts
declare const TaggedClass: <Tag extends string>(tag: Tag) => new <Success, Error, A extends Record<string, any>>(args: Types.Equals<Omit<A, keyof Request<unknown, unknown>>, {}> extends true ? void : { readonly [P in keyof A as P extends "_tag" | keyof Request<unknown, unknown> ? never : P]: A[P]; }) => Request<Success, Error> & Readonly<A> & { readonly _tag: Tag; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L165)

Since v2.0.0