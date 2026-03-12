Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.Action

Action flag: side effect + exit (--help, --version, --completions).

**Signature**

```ts
export interface Action<A> {
  readonly _tag: "Action"
  readonly flag: Flag.Flag<A>
  readonly run: (
    value: A,
    context: HandlerContext
  ) => Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/GlobalFlag.ts#L39)

Since v4.0.0