Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.CompleteEncoded

Encoded representation of a completed workflow result containing an encoded
`Exit`.

**Signature**

```ts
export interface CompleteEncoded<A, E> {
  readonly _tag: "Complete"
  readonly exit: ExitEncoded<A, E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Workflow.ts#L501)

Since v4.0.0