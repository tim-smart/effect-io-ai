Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.setting

Creates a Setting flag that configures the command handler's environment.

**Signature**

```ts
declare const setting: <const Id extends string>(id: Id) => <A>(options: { readonly flag: Flag.Flag<A>; }) => Setting<Id, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/GlobalFlag.ts#L107)

Since v4.0.0