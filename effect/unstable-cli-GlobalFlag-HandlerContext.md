Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.HandlerContext

Context passed to action handlers.

**Signature**

```ts
export interface HandlerContext {
  readonly command: Command.Command.Any
  readonly commandPath: ReadonlyArray<string>
  readonly version: string
  readonly builtIns: ReadonlyArray<BuiltIn>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GlobalFlag.ts#L36)

Since v4.0.0