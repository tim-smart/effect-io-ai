Package: `effect`<br />
Module: `Config`<br />

## Config.orElse

Returns a config whose structure is preferentially described by this
config, but which falls back to the specified config if there is an issue
reading from this config.

**Signature**

```ts
declare const orElse: { <A2>(that: LazyArg<Config<A2>>): <A>(self: Config<A>) => Config<A2 | A>; <A, A2>(self: Config<A>, that: LazyArg<Config<A2>>): Config<A | A2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L294)

Since v2.0.0