# zipWith

Returns a config that is the composes this config and the specified config
using the provided function.

To import and use `zipWith` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.zipWith
undefined

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: Config<B>, f: (a: A, b: B) => C): (self: Config<A>) => Config<C>
  <A, B, C>(self: Config<A>, that: Config<B>, f: (a: A, b: B) => C): Config<C>
}
```
