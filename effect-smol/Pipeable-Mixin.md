Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.Mixin

Returns a subclass of the provided class that adds the standard `pipe`
method.

The original constructor and instance members are preserved, and the added
method delegates to `pipeArguments`.

**Signature**

```ts
declare const Mixin: <TBase extends new (...args: ReadonlyArray<any>) => any>(klass: TBase) => TBase & PipeableConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pipeable.ts#L644)

Since v4.0.0