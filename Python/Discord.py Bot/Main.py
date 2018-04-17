import discord
from discord.ext import commands
import requests
import random

bot_prefix="BotPrefix
bot = commands.Bot(command_prefix=bot_prefix)
version="0.0.1_a or a version you prefer!"

@bot.command(pass_context=True)
async def info(ctx):
  embed=discord.Embed(title="Titles",description="Description",color=0xFFFFFF) #Color must be in hexadecimal
  #Thats a simple embed message, you can mess with embed messages and generate them here: https://cog-creators.github.io/discord-embed-sandbox/
  #Just remember copy all code except "await self.bot.say(embed=embed)
  #Paste it under the info command
  await ctx.send(embed=embed)

@bot.command(pass_context=True)
async def poll(ctx):
  poll = ctx.message.content.split(bot_prefix+"poll", 1)[1]
  embed=discord.Embed(title=poll, color=0x7d5ffa)
  embed.set_footer(ctx.message.author.display_name)
  msg = await ctx.send(embed=embed)
  await bot.add_reaction("Reaction", msg)
  await delete_message(ctx.message)
  
async def delete_message(m):
  await bot.delete_message(m)
  #Basically a remote function for delete_message
  
async def TypeError(context, e):
  embed=discord.Embed(title=str(e))
  await context.send(embed=embed)
@bot.ready
async def on_ready():
  print("Bot is ready for usage!")
  
  
