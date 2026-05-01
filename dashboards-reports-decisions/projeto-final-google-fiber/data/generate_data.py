import csv
import random
from datetime import datetime, timedelta

# Configurações de Simulação
n_rows = 1000
start_date = datetime(2026, 1, 1)
markets = ['Austin', 'Kansas City', 'Provo']
problem_types = ['Technical Issue', 'Billing Inquiry', 'Account Management', 'Equipment Setup', 'Internet Speed']
weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

# Cabeçalho
header = ['Call_ID', 'Call_Date', 'Customer_ID', 'Market', 'Problem_Type', 'Weekday', 'Is_Repeat_Call']

data = []
customer_last_call = {}

# Gerar dados
for i in range(1, n_rows + 1):
    # Gerar data (com peso maior na segunda-feira)
    rand_days = random.randint(0, 89)
    call_date = start_date + timedelta(days=rand_days)
    
    # Simular o pico de segunda-feira (se cair no domingo/terça, tem chance de virar segunda)
    if random.random() < 0.2:
        days_to_monday = (0 - call_date.weekday()) % 7
        call_date = call_date + timedelta(days=days_to_monday)

    customer_id = random.randint(10000, 15000)
    market = random.choice(markets)
    problem = random.choice(problem_types)
    weekday = call_date.strftime('%A')
    
    # Lógica de Reincidência
    is_repeat = 0
    if customer_id in customer_last_call:
        last_date = customer_last_call[customer_id]
        diff = (call_date - last_date).days
        if 0 < diff <= 7:
            is_repeat = 1
    
    customer_last_call[customer_id] = call_date
    
    data.append([i, call_date.strftime('%Y-%m-%d'), customer_id, market, problem, weekday, is_repeat])

# Ordenar por data
data.sort(key=lambda x: x[1])

# Salvar CSV
with open('google_fiber_calls_q1_simulated.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(header)
    writer.writerows(data)

print("CSV gerado com sucesso via biblioteca padrão!")
