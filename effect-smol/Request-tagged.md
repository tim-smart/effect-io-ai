Package: `effect`<br />
Module: `Request`<br />

## Request.tagged

Creates a constructor function for a tagged Request type. The tag is automatically
added to the request, making it useful for discriminated unions.

**Example**

```ts
import { Request } from "effect"

declare const User: unique symbol
declare const UserNotFound: unique symbol
declare const Post: unique symbol
declare const PostNotFound: unique symbol
type User = typeof User
type UserNotFound = typeof UserNotFound
type Post = typeof Post
type PostNotFound = typeof PostNotFound

interface GetUser extends Request.Request<User, UserNotFound> {
  readonly _tag: "GetUser"
  readonly id: string
}

interface GetPost extends Request.Request<Post, PostNotFound> {
  readonly _tag: "GetPost"
  readonly id: string
}

const GetUser = Request.tagged<GetUser>("GetUser")
const GetPost = Request.tagged<GetPost>("GetPost")

const userRequest = GetUser({ id: "user-123" })
const postRequest = GetPost({ id: "post-456" })

// _tag is automatically set
console.log(userRequest._tag) // "GetUser"
console.log(postRequest._tag) // "GetPost"
```

**Signature**

```ts
declare const tagged: <R extends Request<any, any, any> & { _tag: string; }>(tag: R["_tag"]) => Constructor<R, "_tag">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L284)

Since v2.0.0