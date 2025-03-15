Package: `effect`<br />
Module: `Config`<br />

## Config.withDefault

Returns a config that describes the same structure as this one, but has the
specified default value in case the information cannot be found.

**Signature**

```ts
declare const withDefault: { <const A2>(def: A2): <A>(self: Config<A>) => Config<A2 | A>; <A, const A2>(self: Config<A>, def: A2): Config<A | A2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L475)

Since v2.0.0