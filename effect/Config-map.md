Package: `effect`<br />
Module: `Config`<br />

## Config.map

Returns a  config whose structure is the same as this one, but which produces
a different value, constructed using the specified function.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: Config<A>) => Config<B>; <A, B>(self: Config<A>, f: (a: A) => B): Config<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L243)

Since v2.0.0