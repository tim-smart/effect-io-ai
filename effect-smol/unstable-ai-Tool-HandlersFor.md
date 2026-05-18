Package: `effect`<br />
Module: `Tool`<br />

## Tool.HandlersFor

A utility type to create a union of `Handler` types for all tools in a
record.

**Signature**

```ts
type HandlersFor<Tools> = {
  [Name in keyof Tools]: RequiresHandler<Tools[Name]> extends true ? Handler<Tools[Name]["name"]>
    : never
}[keyof Tools]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L995)

Since v4.0.0