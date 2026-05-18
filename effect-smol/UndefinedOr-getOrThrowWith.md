Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.getOrThrowWith

Returns the defined value, or throws the value produced by `onUndefined`
when the input is `undefined`.

**Signature**

```ts
declare const getOrThrowWith: { (onUndefined: () => unknown): <A>(self: A | undefined) => A; <A>(self: A | undefined, onUndefined: () => unknown): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L76)

Since v4.0.0