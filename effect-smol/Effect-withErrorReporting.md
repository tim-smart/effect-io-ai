Package: `effect`<br />
Module: `Effect`<br />

## Effect.withErrorReporting

Runs an effect and reports any errors to the configured `ErrorReporter`s.

If the `defectsOnly` option is set to `true`, only defects (unrecoverable
errors) will be reported, while regular failures will be ignored.

**Signature**

```ts
declare const withErrorReporting: <Arg extends Effect<any, any, any> | { readonly defectsOnly?: boolean | undefined; } | undefined = { readonly defectsOnly?: boolean | undefined; }>(effectOrOptions: Arg, options?: { readonly defectsOnly?: boolean | undefined; } | undefined) => [Arg] extends [Effect<infer _A, infer _E, infer _R>] ? Arg : <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4294)

Since v4.0.0