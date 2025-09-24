Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.Service

Represents the interface that the `Chat` service provides.

**Signature**

```ts
export interface Service {
  /**
   * Reference to the chat history.
   *
   * Provides direct access to the conversation history for advanced use cases
   * like custom history manipulation or inspection.
   *
   * @example
   * ```ts
   * import { Chat } from "@effect/ai"
   * import { Effect, Ref } from "effect"
   *
   * const inspectHistory = Effect.gen(function* () {
   *   const chat = yield* Chat.empty
   *   const currentHistory = yield* Ref.get(chat.history)
   *   console.log("Current conversation:", currentHistory)
   *   return currentHistory
   * })
   * ```
   */
  readonly history: Ref.Ref<Prompt.Prompt>

  /**
   * Exports the chat history into a structured format.
   *
   * Returns the complete conversation history as a structured object
   * that can be stored, transmitted, or processed by other systems.
   *
   * @example
   * ```ts
   * import { Chat } from "@effect/ai"
   * import { Effect } from "effect"
   *
   * const saveChat = Effect.gen(function* () {
   *   const chat = yield* Chat.empty
   *   yield* chat.generateText({ prompt: "Hello!" })
   *
   *   const exportedData = yield* chat.export
   *
   *   // Save to database or file system
   *   return exportedData
   * })
   * ```
   */
  readonly export: Effect.Effect<unknown, AiError.AiError>

  /**
   * Exports the chat history as a JSON string.
   *
   * Provides a convenient way to serialize the entire conversation
   * for storage or transmission in JSON format.
   *
   * @example
   * ```ts
   * import { Chat } from "@effect/ai"
   * import { Effect } from "effect"
   *
   * const backupChat = Effect.gen(function* () {
   *   const chat = yield* Chat.empty
   *   yield* chat.generateText({ prompt: "Explain photosynthesis" })
   *
   *   const jsonBackup = yield* chat.exportJson
   *
   *   yield* Effect.sync(() =>
   *     localStorage.setItem("chat-backup", jsonBackup)
   *   )
   *
   *   return jsonBackup
   * })
   * ```
   */
  readonly exportJson: Effect.Effect<string, AiError.MalformedOutput>

  /**
   * Generate text using a language model for the specified prompt.
   *
   * If a toolkit is specified, the language model will have access to tools
   * for function calling and enhanced capabilities. Both input and output
   * messages are automatically added to the chat history.
   *
   * @example
   * ```ts
   * import { Chat } from "@effect/ai"
   * import { Effect } from "effect"
   *
   * const chatWithAI = Effect.gen(function* () {
   *   const chat = yield* Chat.empty
   *
   *   const response1 = yield* chat.generateText({
   *     prompt: "What is the capital of France?"
   *   })
   *
   *   const response2 = yield* chat.generateText({
   *     prompt: "What's the population of that city?",
   *   })
   *
   *   return [response1.content, response2.content]
   * })
   * ```
   */
  readonly generateText: <
    Options extends NoExcessProperties<LanguageModel.GenerateTextOptions<any>, Options>,
    Tools extends Record<string, Tool.Any> = {}
  >(options: Options & LanguageModel.GenerateTextOptions<Tools>) => Effect.Effect<
    LanguageModel.GenerateTextResponse<Tools>,
    LanguageModel.ExtractError<Options>,
    LanguageModel.LanguageModel | LanguageModel.ExtractContext<Options>
  >

  /**
   * Generate text using a language model with streaming output.
   *
   * Returns a stream of response parts that are emitted as soon as they're
   * available from the model. Supports tool calling and maintains chat history.
   *
   * @example
   * ```ts
   * import { Chat } from "@effect/ai"
   * import { Effect, Stream, Console } from "effect"
   *
   * const streamingChat = Effect.gen(function* () {
   *   const chat = yield* Chat.empty
   *
   *   const stream = yield* chat.streamText({
   *     prompt: "Write a short story about space exploration"
   *   })
   *
   *   yield* Stream.runForEach(stream, (part) =>
   *     part.type === "text-delta"
   *       ? Effect.sync(() => process.stdout.write(part.delta))
   *       : Effect.void
   *   )
   * })
   * ```
   */
  readonly streamText: <
    Options extends NoExcessProperties<LanguageModel.GenerateTextOptions<any>, Options>,
    Tools extends Record<string, Tool.Any> = {}
  >(options: Options & LanguageModel.GenerateTextOptions<Tools>) => Stream.Stream<
    Response.StreamPart<Tools>,
    LanguageModel.ExtractError<Options>,
    LanguageModel.LanguageModel | LanguageModel.ExtractContext<Options>
  >

  /**
   * Generate a structured object using a language model and schema.
   *
   * Forces the model to return data that conforms to the specified schema,
   * enabling structured data extraction and type-safe responses. The
   * conversation history is maintained across calls.
   *
   * @example
   * ```ts
   * import { Chat } from "@effect/ai"
   * import { Effect, Schema } from "effect"
   *
   * const ContactSchema = Schema.Struct({
   *   name: Schema.String,
   *   email: Schema.String,
   *   phone: Schema.optional(Schema.String)
   * })
   *
   * const extractContact = Effect.gen(function* () {
   *   const chat = yield* Chat.empty
   *
   *   const contact = yield* chat.generateObject({
   *     prompt: "Extract contact info: John Doe, john@example.com, 555-1234",
   *     schema: ContactSchema
   *   })
   *
   *   console.log(contact.object)
   *   // { name: "John Doe", email: "john@example.com", phone: "555-1234" }
   *
   *   return contact.object
   * })
   * ```
   */
  readonly generateObject: <
    A,
    I extends Record<string, unknown>,
    R,
    Options extends NoExcessProperties<LanguageModel.GenerateObjectOptions<any, A, I, R>, Options>,
    Tools extends Record<string, Tool.Any> = {}
  >(options: Options & LanguageModel.GenerateObjectOptions<Tools, A, I, R>) => Effect.Effect<
    LanguageModel.GenerateObjectResponse<Tools, A>,
    LanguageModel.ExtractError<Options>,
    LanguageModel.LanguageModel | R | LanguageModel.ExtractContext<Options>
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L102)

Since v1.0.0