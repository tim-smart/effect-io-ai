Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.action

Creates an Action flag that performs a side effect and exits.

**Signature**

```ts
declare const action: <A>(options: { readonly flag: Flag.Flag<A>; readonly run: (value: A, context: HandlerContext) => Effect.Effect<void>; }) => Action<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/GlobalFlag.ts#L89)

Since v4.0.0