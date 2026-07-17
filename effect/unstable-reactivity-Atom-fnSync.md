Package: `effect`<br />
Module: `Atom`<br />

## Atom.fnSync

Creates a writable atom for a synchronous function; writing an argument re-runs the function, returning `Option.none` before the first call unless an initial value is supplied.

**Signature**

```ts
declare const fnSync: { <Arg>(): { <A>(f: (arg: Arg, get: FnContext) => A): Writable<Option.Option<A>, Arg>; <A>(f: (arg: Arg, get: FnContext) => A, options: { readonly initialValue: A; }): Writable<A, Arg>; }; <A, Arg = void>(f: (arg: Arg, get: FnContext) => A): Writable<Option.Option<A>, Arg>; <A, Arg = void>(f: (arg: Arg, get: FnContext) => A, options: { readonly initialValue: A; }): Writable<A, Arg>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L1024)

Since v4.0.0