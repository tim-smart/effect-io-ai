Package: `effect`<br />
Module: `Config`<br />

## Config.branded

Constructs a config for a branded value.

**Signature**

```ts
declare const branded: { <A, B extends Brand.Branded<A, any>>(constructor: Brand.Brand.Constructor<B>): (config: Config<A>) => Config<B>; <B extends Brand.Branded<string, any>>(name: string | undefined, constructor: Brand.Brand.Constructor<B>): Config<B>; <A, B extends Brand.Branded<A, any>>(config: Config<A>, constructor: Brand.Brand.Constructor<B>): Config<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L378)

Since v3.16.0