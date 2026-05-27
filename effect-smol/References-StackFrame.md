Package: `effect`<br />
Module: `References`<br />

## References.StackFrame

A captured stack-frame node used to describe the traced execution path.

**When to use**

Use when reading or supplying the stack-frame chain that Effect tracing uses
to attach diagnostic call-site information to failures and interruptions.

**Details**

Each frame has a span or operation `name`, a lazy `stack` supplier, and an
optional `parent` frame that links it to the previous captured frame.

**See**

- `CurrentStackFrame` for the fiber reference carrying the active stack-frame chain

**Signature**

```ts
export interface StackFrame {
  readonly name: string
  readonly stack: () => string | undefined
  readonly parent: StackFrame | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L752)

Since v4.0.0