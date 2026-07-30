Package: `effect`<br />
Module: `Config`<br />

## Config.all

Constructs a config from a tuple / struct / arguments of configs.

**Signature**

```ts
declare const all: <const Arg extends Iterable<Config<any>> | Record<string, Config<any>>>(arg: Arg) => Config<[Arg] extends [ReadonlyArray<Config<any>>] ? { -readonly [K in keyof Arg]: [Arg[K]] extends [Config<infer A>] ? A : never; } : [Arg] extends [Iterable<Config<infer A>>] ? Array<A> : [Arg] extends [Record<string, Config<any>>] ? { -readonly [K in keyof Arg]: [Arg[K]] extends [Config<infer A>] ? A : never; } : never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L103)

Since v2.0.0