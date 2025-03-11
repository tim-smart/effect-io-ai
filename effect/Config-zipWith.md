## zipWith

Returns a config that is the composes this config and the specified config
using the provided function.

**Signature**

```ts
declare const zipWith: { <B, A, C>(that: Config<B>, f: (a: A, b: B) => C): (self: Config<A>) => Config<C>; <A, B, C>(self: Config<A>, that: Config<B>, f: (a: A, b: B) => C): Config<C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L509)

Since v2.0.0