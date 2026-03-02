Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.Setting

Setting flag: configure command handler's environment (--log-level, --config).

**Signature**

```ts
export interface Setting<Id extends string, A> extends ServiceMap.Service<Setting.Identifier<Id>, A> {
  readonly _tag: "Setting"
  readonly id: Id
  readonly flag: Flag.Flag<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/GlobalFlag.ts#L51)

Since v4.0.0