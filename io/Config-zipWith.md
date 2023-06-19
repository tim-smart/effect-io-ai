# zipWith

Returns a config that is the composes this config and the specified config
using the provided function.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: Config<B>, f: (a: A, b: B) => C): (self: Config<A>) => Config<C>
  <A, B, C>(self: Config<A>, that: Config<B>, f: (a: A, b: B) => C): Config<C>
}
```
