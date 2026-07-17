Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.PipeableConstructor

Constructor type for classes whose instances implement `Pipeable`.

**When to use**

Use as the constructor-side type when a class value should be known to create
instances that support Effect-style method chaining with `.pipe(...)`.

**See**

- `Pipeable` for the instance-side contract
- `Class` for the base constructor
- `Mixin` for wrapping an existing class constructor

**Signature**

```ts
export interface PipeableConstructor {
  new(...args: ReadonlyArray<any>): Pipeable
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pipeable.ts#L645)

Since v3.15.0