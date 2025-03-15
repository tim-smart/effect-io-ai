Package: `effect`<br />
Module: `Config`<br />

## Config.nested

Returns a config that has this configuration nested as a property of the
specified name.

**Signature**

```ts
declare const nested: { (name: string): <A>(self: Config<A>) => Config<A>; <A>(self: Config<A>, name: string): Config<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L272)

Since v2.0.0