Package: `effect`<br />
Module: `Request`<br />

## Request.TaggedClass

Creates a class constructor for requests with a fixed `_tag` field.

**Details**

Use this when defining class-based request types that should participate in
tagged unions or tag-based request resolvers.

**Example** (Defining tagged request classes)

```ts
import { Request } from "effect"

class GetUserById
  extends Request.TaggedClass("GetUserById")<{ id: number }, string, Error>
{}

const request = new GetUserById({ id: 123 })
console.log(request._tag) // "GetUserById"
console.log(request.id) // 123
```

**Signature**

```ts
declare const TaggedClass: <Tag extends string>(tag: Tag) => new <A extends Record<string, any>, Success, Error = never, Services = never>(args: Types.Equals<Omit<A, keyof Request<unknown, unknown>>, {}> extends true ? void : { readonly [P in keyof A as P extends "_tag" | keyof Request<any, any, any> ? never : P]: A[P]; }) => Request<Success, Error, Services> & Readonly<A> & { readonly _tag: Tag; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L394)

Since v2.0.0