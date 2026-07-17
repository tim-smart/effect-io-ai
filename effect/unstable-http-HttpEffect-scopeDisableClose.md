Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.scopeDisableClose

Disables automatic closing for an HTTP request scope.

**Gotchas**

Use only when another owner will close the scope; otherwise resources attached
to the request scope can leak.

**Signature**

```ts
declare const scopeDisableClose: (scope: Scope.Scope) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpEffect.ts#L129)

Since v4.0.0