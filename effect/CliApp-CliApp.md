Package: `@effect/cli`<br />
Module: `CliApp`<br />

## CliApp.CliApp

A `CliApp<A>` is a complete description of a command-line application.

**Signature**

```ts
export interface CliApp<A> extends Pipeable {
  readonly name: string
  readonly version: string
  readonly executable: string
  readonly command: Command<A>
  readonly summary: Span
  readonly footer: HelpDoc
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/CliApp.ts#L21)

Since v1.0.0