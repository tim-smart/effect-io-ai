Package: `effect`<br />
Module: `Exit`<br />

## Exit.fromOption

Converts an `Option<A>` into an `Exit<void, A>`.

**Signature**

```ts
declare const fromOption: <A>(option: Option.Option<A>) => Exit<A, void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L242)

Since v2.0.0