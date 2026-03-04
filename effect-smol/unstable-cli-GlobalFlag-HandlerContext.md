Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.HandlerContext

Context passed to action handlers.

**Signature**

```ts
export interface HandlerContext {
  readonly command: Command.Command<any, unknown, any, unknown, unknown>
  readonly commandPath: ReadonlyArray<string>
  readonly version: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/GlobalFlag.ts#L24)

Since v4.0.0