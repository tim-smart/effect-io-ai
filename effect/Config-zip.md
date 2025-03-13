Package: `effect`<br />
Module: `Config`<br />

## Config.zip

Returns a config that is the composition of this config and the specified
config.

**Signature**

```ts
declare const zip: { <B>(that: Config<B>): <A>(self: Config<A>) => Config<[A, B]>; <A, B>(self: Config<A>, that: Config<B>): Config<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L497)

Since v2.0.0