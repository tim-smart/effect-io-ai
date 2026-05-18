Package: `effect`<br />
Module: `References`<br />

## References.StackFrame

A captured stack-frame node used to describe the traced execution path.

**Details**
Each frame has a span or operation `name`, a lazy `stack` supplier, and an
optional `parent` frame that links it to the previous captured frame.

**Signature**

```ts
export interface StackFrame {
  readonly name: string
  readonly stack: () => string | undefined
  readonly parent: StackFrame | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L557)

Since v4.0.0