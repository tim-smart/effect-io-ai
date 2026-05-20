Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.SaveResult.Constructor

Generic tagged enum constructor type for `SaveResult`.

**Signature**

```ts
export interface Constructor extends Data.TaggedEnum.WithGenerics<1> {
    readonly taggedEnum: SaveResult<this["A"] extends Rpc.Any ? this["A"] : never>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L289)

Since v4.0.0