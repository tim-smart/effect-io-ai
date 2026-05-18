Package: `effect`<br />
Module: `Statement`<br />

## Statement.makeCompiler

Creates a dialect-specific SQL `Compiler` from rendering callbacks.

**Signature**

```ts
declare const makeCompiler: <C extends Custom<any, any, any, any> = any>(options: CompilerOptions<C>) => Compiler
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L797)

Since v4.0.0