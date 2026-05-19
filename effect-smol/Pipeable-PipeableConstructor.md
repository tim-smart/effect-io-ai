Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.PipeableConstructor

Constructor type for classes whose instances implement `Pipeable`.

**Signature**

```ts
export interface PipeableConstructor {
  new(...args: ReadonlyArray<any>): Pipeable
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pipeable.ts#L630)

Since v3.15.0