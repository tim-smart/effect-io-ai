Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.scopeDisableClose

If you want to finalize the http request scope elsewhere, you can use this
function to eject from the default scope closure.

**Signature**

```ts
declare const scopeDisableClose: (scope: Scope.Scope) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L116)

Since v4.0.0