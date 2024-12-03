# getOrElse

Get a service from the context that corresponds to the given tag, or
use the fallback value.

To import and use `getOrElse` from the "Context" module:

```ts
import * as Context from "effect/Context"
// Can be accessed like this
Context.getOrElse
```

**Signature**

```ts
export declare const getOrElse: {
  <S, I, B>(tag: Tag<I, S>, orElse: LazyArg<B>): <Services>(self: Context<Services>) => S | B
  <Services, S, I, B>(self: Context<Services>, tag: Tag<I, S>, orElse: LazyArg<B>): S | B
}
```
